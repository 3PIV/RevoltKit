//
// SyncAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class SyncAPI {

    /**
     Fetch Settings
     
     - parameter inlineObject30Model: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func syncSettingsFetchPost(fetchSettingsModel: SyncFetchSettingsModel? = nil, apiResponseQueue: DispatchQueue = OpenAPIClient.apiResponseQueue, completion: @escaping ((_ data: [String: Array]?, _ error: Error?) -> Void)) {
        syncSettingsFetchPostWithRequestBuilder(inlineObject30Model: fetchSettingsModel).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Fetch Settings
     - POST /sync/settings/fetch
     - Fetch settings from server filtered by keys.  This will return an object with the requested keys, each value is a tuple of `(timestamp, value)`, the value is the previously uploaded data.
     - API Key:
       - type: apiKey x-session-token 
       - name: Session Token
     - parameter inlineObject30Model: (body)  (optional)
     - returns: RequestBuilder<[String: Array]> 
     */
    open class func syncSettingsFetchPostWithRequestBuilder(fetchSettingsModel: SyncFetchSettingsModel? = nil) -> RequestBuilder<[String: Array]> {
        let localVariablePath = "/sync/settings/fetch"
        let localVariableURLString = OpenAPIClient.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: fetchSettingsModel)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<[String: Array]>.Type = OpenAPIClient.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Set Settings
     
     - parameter timestamp: (query) Timestamp of settings change. Useful to prevent a feedback loop. (optional)
     - parameter requestBody: (body) Settings Data (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func syncSettingsSetPost(timestamp: Double? = nil, requestBody: [String: String]? = nil, apiResponseQueue: DispatchQueue = OpenAPIClient.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
        syncSettingsSetPostWithRequestBuilder(timestamp: timestamp, requestBody: requestBody).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Set Settings
     - POST /sync/settings/set
     - Upload data to save to settings.
     - API Key:
       - type: apiKey x-session-token 
       - name: Session Token
     - parameter timestamp: (query) Timestamp of settings change. Useful to prevent a feedback loop. (optional)
     - parameter requestBody: (body) Settings Data (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func syncSettingsSetPostWithRequestBuilder(timestamp: Double? = nil, requestBody: [String: String]? = nil) -> RequestBuilder<Void> {
        let localVariablePath = "/sync/settings/set"
        let localVariableURLString = OpenAPIClient.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: requestBody)

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "timestamp": timestamp?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = OpenAPIClient.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Fetch Unreads
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func syncUnreadsPost(apiResponseQueue: DispatchQueue = OpenAPIClient.apiResponseQueue, completion: @escaping ((_ data: [ChannelUnreadModel]?, _ error: Error?) -> Void)) {
        syncUnreadsPostWithRequestBuilder().execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Fetch Unreads
     - POST /sync/unreads
     - Fetch information about unread state on channels.
     - API Key:
       - type: apiKey x-session-token 
       - name: Session Token
     - returns: RequestBuilder<[ChannelUnreadModel]> 
     */
    open class func syncUnreadsPostWithRequestBuilder() -> RequestBuilder<[ChannelUnreadModel]> {
        let localVariablePath = "/sync/unreads"
        let localVariableURLString = OpenAPIClient.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<[ChannelUnreadModel]>.Type = OpenAPIClient.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}
