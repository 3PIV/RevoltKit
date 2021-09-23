//
// VoiceAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class VoiceAPI {

    /**
     Join Call
     
     - parameter channel: (path) Channel ID 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func channelsChannelJoinCallPost(channel: ChannelIDModel, apiResponseQueue: DispatchQueue = OpenAPIClient.apiResponseQueue, completion: @escaping ((_ data: ChannelsVoiceJoinCallResponseModel?, _ error: Error?) -> Void)) {
        channelsChannelJoinCallPostWithRequestBuilder(channel: channel).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Join Call
     - POST /channels/:channel/join_call
     - Asks the voice server for a token to join the call.
     - API Key:
       - type: apiKey x-bot-token 
       - name: Bot Token
     - API Key:
       - type: apiKey x-session-token 
       - name: Session Token
     - parameter channel: (path) Channel ID 
     - returns: RequestBuilder<InlineResponse2003Model> 
     */
    open class func channelsChannelJoinCallPostWithRequestBuilder(channel: ChannelIDModel) -> RequestBuilder<ChannelsVoiceJoinCallResponseModel> {
        var localVariablePath = "/channels/:channel/join_call"
        let channelPreEscape = "\(APIHelper.mapValueToPathItem(channel))"
        let channelPostEscape = channelPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{channel}", with: channelPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClient.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ChannelsVoiceJoinCallResponseModel>.Type = OpenAPIClient.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}
